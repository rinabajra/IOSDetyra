//
//  Task.swift
//  IOSDetyra
//
//

import Foundation

struct Therapy: Identifiable {
    var id = UUID()
    var title: String
    var descr: String
    var image: String
    var completed: Bool
}

var therapyList = [
    Therapy(title: "Warrior II Pose", descr: """
                           How to do this pose:
                           
                           Stand with your feet wider than your shoulders, about 4 to 5 feet apart.
                           Turn your right toes out to face the short end of your mat and your left toes forward to face the long edge. Align your front heel with the center of your back instep.
                           Deeply bend your right leg while keeping your left leg straight and strong. Keep an eye on your front knee. Notice if it’s extending beyond your ankle or dropping in toward the midline.
                           Lift your arms up to shoulder height and extend them out. Keep your gaze over your front middle finger.
                           Actively press your front knee out. If possible, put a 90-degree bend in your front leg — that deep bend is what helps to lengthen and stretch your groin and inner thigh muscles. If your knee can’t reach that far, don’t worry; just go as far as you can without any pain.
                           Press down through your front heel and feel your quads, hamstrings, and glutes light up.
                           Press the outer edge of your back foot firmly into the floor. Notice how your back leg engages more when you seal the outer edge of your foot down. Your calf muscles, quads, and hamstrings are now active.
                           Hold this pose for 30 to 60 seconds. Reverse your feet and repeat for the same length of time on the other side.
                           """, image: "therapy1", completed: false),
                   
             Therapy(title: "Half Moon Pose", descr: """
                        How to do this pose:
                        
                        Begin in Warrior II Pose.
                        Shift your weight into your front leg and lean into it.
                        Reach your right fingertips down to the floor in front of your toes, toward the pinky toe side of your foot. If it’s difficult to reach the ground, you can place your hand on a block instead.
                        Spring your back foot off the ground and engage your leg as you lift your foot to the height of your hip. Flex your lifted foot to engage your calf muscles.
                        If you’re having trouble with balance, try bending your front leg. This may help make the pose easier for you.
                        Reach your left arm to the sky and stack your shoulders. Gaze up toward the top of your left hand.
                        Hold this pose for 30 to 60 seconds, then reverse your feet and repeat for the same length of time on the other side.
                        """, image: "therapy2" , completed: false),
    
    Therapy(title: "Vinyasa Yoga", descr: """
               Plank Pose — Kumbhakasana
               Inhale as you come into a high push-up position, with your hands under your shoulders and feet hip-distance apart.
               Knees-Chest-Chin Pose — Ashtanga Namaskara
               Exhale as you lower your knees to the floor, keeping your elbows tucked in toward your sides. Keep your hips lifted off the floor, but bring your chest and chin to the floor. Place your chest between your hands
               Cobra Pose — Bhujangasana
               Inhale as you draw your chest forward, keeping your hands underneath your shoulders. Extend your legs along the floor and un-tuck your toes. Draw your shoulders back and lift your chest slightly. Keep your lower ribs on the floor.
               Downward-Facing Dog Pose — Adho Mukha Svanasana
               Exhale as you lift your hips and roll over your toes, placing the soles of your feet on the floor. Ground down through your hands and the soles of your feet as you lengthen your spine. Lift your belly and sit bones to the sky.
               """, image: "therapy3" , completed: false),
    
    Therapy(title: "Bridge Pose", descr: """
               How to do this pose:

               Lie on the floor on a yoga mat or thick blanket, with your knees bent and your feet flat on the floor. Keep your arms at your sides.
               Engage your core and glutes, press your feet into the floor, and lift your buttocks off the floor.
               Raise your buttocks until your thighs are parallel to the floor — or as close to parallel as you can get.
               Check that your knees are directly over your heels and your body is in a straight line from your shoulders to your knees. This is the top of the position.
               Stay in this pose with your glutes and core engaged for 30 seconds. As you get stronger, increase the hold time to 1 minute.
               """, image: "therapy4" , completed: false),
    
    Therapy(title: "Child’s pose", descr: """
               To do this pose:

               Kneel on the floor with your knees hip-width apart, big toes touching, buttocks on your heels.
               You can place a cushion or folded blanket between your thighs and calves for support.
               Exhale and lean forward with your torso between your thighs. bringing your head down toward the floor.
               Extend your arms out in front of you, above your head, with your palms on the floor. If this is too difficult, you can allow your arms to rest alongside your body with your palms facing up.
               For extra support, you can add a cushion or folded blankets under your head and arms.
               Remain in this pose for up to 5 minutes, inhaling and exhaling deeply.
               Release by lifting your torso up into a seated position.

               """, image: "therapy5" , completed: false),
    
    
    Therapy(title: "Downward-Facing Dog", descr: """
               Muscles worked:

               hamstrings
               deltoids
               gluteus maximus
               triceps
               quadriceps
               To do this:

               Get on all fours.
               Place your hands in alignment under your wrists and your knees under your hips.
               Press into your hands, tuck your toes under, and lift up your knees.
               Bring your sitting bones up toward the ceiling.
               Keep a slight bend in your knees and lengthen your spine and tailbone.
               Keep your heels slightly off the ground.
               Press firmly into your hands.
               Distribute your weight evenly between both sides of your body, paying attention to the position of your hips and shoulders.
               Keep your head in line with your upper arms or with your chin tucked in slightly.
               Hold this pose for up to 1 minute.
               """, image: "therapy6" , completed: false),
    
    
    Therapy(title: "Head to knee (Janu Sirsasana)", descr: """
               To do this pose:
               Sit on the ground or on a yoga mat.
               Extend your right leg, and press your left foot into the inside of your thigh.
               Inhale and raise your arms overhead.
               Exhale and bend at your hips to fold forward toward your outstretched leg.
               Place your hands on the floor, or hold on to your outstretched leg or foot.
               Hold for 1 to 2 minutes.
               Switch legs and do the opposite side.
               """, image: "therapy7" , completed: false),
    
    
    
    Therapy(title: "Half Lord of the Fishes", descr: """
               Muscles worked:

               rhomboids
               serratus anterior
               erector spinae
               pectoralis major
               psoas
               To do this:

               From a seated position, draw your right foot in close to your body.
               Bring your left foot to the outside of your leg.
               Lengthen your spine as you twist your body to the left.
               Take your left hand to the floor behind you for support.
               Move your right upper arm to the outside of your left thigh, or wrap your elbow around your left knee.
               Try to keep your hips square to deepen the twist in your spine.
               Turn your gaze to look over either shoulder.
               Hold this pose for up to 1 minute.
               Repeat on the other side.

               """, image: "therapy8" , completed: false),
    
    
    
                ]
